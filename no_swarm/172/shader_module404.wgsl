struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<f32> {
    var var_0 = global0.a.a.x;
    global0 = Struct_2(global0.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1703f - global0.c.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-746f, -660f)), -834f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1142f, 964f, global0.e))), _wgslsmith_div_f32(232f, _wgslsmith_f_op_f32(ceil(global0.d.a.x))), 1858f)), global0.d, true);
    var var_1 = true;
    let var_2 = firstTrailingBit(-u_input.c >> (~(~u_input.b.x) % 32u));
    var var_3 = select(!vec4<bool>(all(select(vec4<bool>(global0.e, global0.e, global0.e, true), vec4<bool>(global0.e, global0.e, global0.e, true), false)), true, !global0.e, global0.e), vec4<bool>(all(!vec2<bool>(true, global0.e)), global0.e, all(select(vec2<bool>(false, true), !vec2<bool>(global0.e, global0.e), !vec2<bool>(false, global0.e))), true), true);
    return global0.d.a;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(global0.a, global0.b, _wgslsmith_f_op_vec4_f32(-global0.d.a), global0.d, _wgslsmith_f_op_f32(f32(-1f) * -982f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(954f + global0.c.x)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global0.d.a)) + _wgslsmith_f_op_vec4_f32(func_3()))), -214f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b, var_0.a.a.x, var_0.d.a.x, global0.a.a.x))))) * vec4<f32>(var_0.d.a.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -394f)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.d.a.x, 341f), -1583f, _wgslsmith_f_op_f32(f32(-1f) * -1222f), _wgslsmith_div_f32(var_0.d.a.x, -2868f)))), global0.e | any(!vec3<bool>(true, global0.e, global0.e)));
    var var_2 = firstTrailingBit(select(max(~vec4<u32>(1u, 24180u, 263u, u_input.b.x), abs(vec4<u32>(4294967295u, 1u, 46161u, 0u))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 1u, 20607u, 1u) | vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), max(vec4<u32>(6198u, 0u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 21881u))), vec4<bool>(global0.e, global0.e, var_0.e, true)) << (vec4<u32>(4294967295u, u_input.b.x, 0u, ~u_input.b.x) % vec4<u32>(32u)));
    let var_3 = global0.a.a.xzy;
    var_1 = Struct_2(var_1.d, var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-300f, 1288f, -143f, var_3.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, global0.b, 1000f, -1088f) - global0.d.a) + vec4<f32>(-1411f, var_0.c.x, global0.c.x, var_3.x)) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_f32(176f, global0.b), _wgslsmith_f_op_f32(648f * 1000f), _wgslsmith_div_f32(387f, 1177f)))), global0.a, var_1.e);
    return -firstTrailingBit(u_input.c);
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = ~(-1i);
    var_0 = ~(-func_2() & -11692i);
    var_0 = u_input.a.x;
    let var_1 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(~vec4<u32>(0u, 22398u, 0u, 38715u)), ~(~vec4<u32>(1182u, u_input.b.x, u_input.b.x, 0u))), ~(~(~vec4<u32>(77943u, u_input.b.x, u_input.b.x, u_input.b.x))));
    var var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -572f), 2169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1247f)), 1f)), _wgslsmith_f_op_f32(floor(global0.b)), _wgslsmith_div_vec4_f32(global0.c, _wgslsmith_f_op_vec4_f32(func_3())), global0.a, true);
    return global0.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = u_input.a & -u_input.a;
    let var_1 = global0.d.a.x;
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(min(-u_input.a.x, _wgslsmith_mult_i32(19997i & u_input.c, var_0.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_0.x, -2147483647i), var_0) | (vec3<i32>(u_input.c, 2147483647i, var_0.x) ^ var_0), vec3<i32>(var_0.x & u_input.c, min(u_input.a.x, 23839i), u_input.c)), u_input.a.x), min(~vec3<i32>(14218i, firstLeadingBit(u_input.a.x), -37626i), ((var_0 | u_input.a) & (u_input.a >> (u_input.b % vec3<u32>(32u)))) & ~(-vec3<i32>(-3741i, -1i, u_input.c))));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.d.a.x, arg_1.a.x, -1931f, arg_1.a.x))))))), _wgslsmith_f_op_f32(f32(-1f) * -313f), func_1(-1835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x)).a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -409f, global0.b, 1000f) - vec4<f32>(arg_1.a.x, 950f, -1000f, arg_1.a.x)), vec4<f32>(global0.c.x, 1000f, -998f, 909f))))), true);
    global0 = Struct_2(func_1(arg_0.a.x, global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x) * arg_0.a.x) * -563f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_0.a))))), Struct_1(arg_0.a), false);
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-299f, -1644f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_1.a.x))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 572f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.x, arg_1.a.x)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-u_input.c, 0i, -1i), abs(u_input.a), ~vec3<i32>(1i, ~(-34685i), ~u_input.c)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(global0.a, func_1(-475f, global0.c.x)))))), max(_wgslsmith_mult_u32(48088u, u_input.b.x), ~4294967295u) & reverseBits(1u));
}

