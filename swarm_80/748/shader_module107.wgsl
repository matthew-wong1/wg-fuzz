struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(0i), Struct_3(vec2<bool>(true, true), 4294967295u, true, 1u, Struct_2(i32(-2147483648))), false, vec4<f32>(-987f, -183f, -320f, 271f), Struct_2(-11368i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = arg_0;
    let var_1 = ~global0.b.b;
    var var_2 = select(vec3<i32>(var_0.e.a, abs(-35207i), -_wgslsmith_div_i32(~var_0.e.a, ~arg_0.e.a)), max(reverseBits(reverseBits(~vec3<i32>(-26650i, 1i, 2147483647i))), vec3<i32>(var_0.e.a, 1i << (reverseBits(arg_0.d) % 32u), arg_0.e.a)), vec3<bool>(global0.b.c & false, ~(~1u) == countOneBits(_wgslsmith_clamp_u32(var_1, 47325u, var_1)), true));
    var_0 = Struct_3(vec2<bool>((-global0.e.a == ~arg_0.e.a) || all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, arg_0.a.x), vec4<bool>(global0.b.a.x, true, global0.b.a.x, var_0.a.x))), global0.b.a.x), 0u, any(select(vec4<bool>(var_0.a.x == true, true, true, global0.b.b >= arg_0.b), !select(vec4<bool>(arg_0.a.x, global0.b.a.x, false, global0.c), vec4<bool>(var_0.c, var_0.c, global0.c, var_0.a.x), vec4<bool>(false, true, true, var_0.c)), arg_0.b > 1u)), global0.b.d, Struct_2(-1i));
    var var_3 = var_0.e;
    return global0.d.x;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1162f), 753f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(664f, 119f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.d.x, global0.d.x)))))), _wgslsmith_f_op_f32(func_3(Struct_3(!vec2<bool>(true, global0.c), 1u, false, 97324u, global0.b.e))));
    var var_1 = Struct_4(select(!vec2<bool>(!global0.b.c, global0.c), global0.b.a, false));
    var var_2 = global0.d;
    var var_3 = !(!select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), var_1.a.x), select(vec3<bool>(true, false, var_1.a.x), vec3<bool>(global0.c, global0.c, var_1.a.x), vec3<bool>(var_1.a.x, true, false)), select(vec3<bool>(global0.b.a.x, var_1.a.x, false), vec3<bool>(var_1.a.x, global0.c, global0.b.a.x), vec3<bool>(false, global0.c, false))), select(vec3<bool>(var_1.a.x, false, false), select(vec3<bool>(global0.b.c, global0.b.a.x, true), vec3<bool>(true, var_1.a.x, global0.b.a.x), global0.c), global0.b.c), vec3<bool>(true, true, true)));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-901f, _wgslsmith_f_op_f32(step(208f, var_0.b)), !var_3.x))) - -317f));
    return Struct_3(!select(select(global0.b.a, var_3.zz, var_1.a), select(global0.b.a, select(vec2<bool>(var_1.a.x, var_3.x), vec2<bool>(var_3.x, var_1.a.x), true), all(vec2<bool>(false, var_1.a.x))), var_3.xz), ~1u, var_1.a.x, global0.b.b, Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, -39248i, -47735i, 0i), vec4<i32>(u_input.b, 2147483647i, global0.e.a, -2147483647i)), -_wgslsmith_add_i32(u_input.b, 24436i))));
}

fn func_1() -> f32 {
    global0 = Struct_5(Struct_2(~1i), func_2(), global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0.d)) * vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) * _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(452f)))), _wgslsmith_f_op_f32(select(638f, global0.d.x, true)))), func_2().e);
    let var_0 = global0.d.x;
    var var_1 = Struct_5(global0.b.e, func_2(), true, vec4<f32>(_wgslsmith_f_op_f32(-561f + -2339f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(932f)) * _wgslsmith_f_op_f32(-global0.d.x)) + 1115f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(294f, _wgslsmith_f_op_f32(ceil(global0.d.x)))), -1058f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x * global0.d.x))), func_2().e);
    var var_2 = vec2<bool>(true, true);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-135f, _wgslsmith_f_op_f32(-global0.d.x), false))) + global0.d.x), _wgslsmith_div_f32(global0.d.x, _wgslsmith_f_op_f32(-1f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-266f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(global0.a, global0.b, !global0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1()), global0.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.d.x, global0.d.x))), _wgslsmith_div_f32(229f, _wgslsmith_f_op_f32(global0.d.x + -1000f)))), Struct_2(-_wgslsmith_dot_vec2_i32(vec2<i32>(global0.e.a, -1i) << (u_input.c.wx % vec2<u32>(32u)), select(vec2<i32>(2147483647i, 5838i), vec2<i32>(1i, global0.a.a), global0.b.c))));
    let var_1 = u_input.c.xxz | firstTrailingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 22557u, u_input.a), u_input.c.yzy, ~vec3<u32>(global0.b.d, u_input.c.x, var_0.b.d)));
    var var_2 = Struct_5(func_2().e, func_2(), true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2647f), -1775f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x * 514f) + _wgslsmith_f_op_f32(step(1000f, global0.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x - 288f) - _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-465f + global0.d.x), _wgslsmith_div_f32(var_0.d.x, -825f))), var_0.b.a.x)), var_0.b.e);
    let var_3 = _wgslsmith_mod_u32(var_0.b.b, max(~(firstLeadingBit(1u) & u_input.d), var_0.b.b >> (_wgslsmith_dot_vec3_u32(abs(u_input.c.xzz), vec3<u32>(var_2.b.b, var_0.b.d, var_1.x)) % 32u)));
    let var_4 = vec2<bool>(!all(vec3<bool>(true, !var_2.b.a.x, true)), func_2().c);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, vec4<u32>(4294967295u, firstLeadingBit(var_1.x), firstTrailingBit(~16271u), firstTrailingBit(18264u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(global0.d.x - global0.d.x), _wgslsmith_f_op_f32(ceil(-1000f)))))), -52261i);
}

