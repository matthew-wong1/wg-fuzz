struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: u32;

var<private> global2: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.e.x, 17u)];
    let var_1 = 1i;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(230f)), var_0.a.x, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(max(537f, -945f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, var_0.a.x, -1000f, arg_0.b.a.x) - arg_0.b.a))))), var_0.c, ~arg_0.b.c, var_0.d & ~vec3<i32>(arg_0.a, -1i, abs(arg_0.e)));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1543f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(211f, -452f), 536f)), -375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-992f * var_2.a.x))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-187f)), _wgslsmith_f_op_f32(-arg_0.b.a.x))), _wgslsmith_div_f32(arg_0.b.a.x, 804f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1387f, var_0.a.x)) + _wgslsmith_f_op_f32(abs(arg_0.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1473f)))), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-237f - var_2.a.x) + _wgslsmith_f_op_f32(-var_0.a.x)), -1081f), -468f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(162f, -164f, false)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(arg_2.x + arg_2.x))))), arg_2.x), !any(vec2<bool>(true, true))));
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) * 1407f)));
    return _wgslsmith_f_op_f32(f32(-1f) * -167f);
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -639f)))), _wgslsmith_f_op_f32(func_3(Struct_2(u_input.c.x << (u_input.b % 32u), Struct_1(vec4<f32>(1403f, -624f, -954f, -497f), vec3<u32>(9118u, u_input.d.x, u_input.e.x), vec3<u32>(48996u, 4294967295u, u_input.e.x), vec3<i32>(26512i, u_input.c.x, u_input.c.x)), min(0u, 0u), ~u_input.d.x, i32(-1i) * -5802i), 26247i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(637f, 507f, 572f)))))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(-1167f, 238f, -295f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2227f, _wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(sign(-875f))) * vec3<f32>(1f, 1f, 1f))))));
    let var_1 = Struct_1(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1158f)) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.x, -616f, true)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - _wgslsmith_f_op_f32(-var_0.x))), var_0.x), vec3<u32>(max(4294967295u, u_input.d.x ^ 12446u) | abs(abs(u_input.e.x)), u_input.e.x, 41827u), ~vec3<u32>(21169u, 1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e.x, u_input.b), vec3<u32>(4294967295u, u_input.d.x, u_input.d.x))), vec3<i32>(-(~64476i), i32(-1i) * -19772i, -17560i));
    global0 = array<Struct_1, 17>();
    global2 = !(438f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.x))));
    let var_2 = var_1;
    return max(select(vec3<u32>(firstTrailingBit(~859u), firstLeadingBit(1u), var_2.c.x), select(var_1.c, vec3<u32>(4294967295u, 4018u, var_2.b.x), vec3<bool>(true, true, true)) >> (var_1.b % vec3<u32>(32u)), !any(vec3<bool>(true, true, true))), _wgslsmith_clamp_vec3_u32(~firstLeadingBit(~vec3<u32>(1u, var_2.c.x, 17552u)), ~vec3<u32>(var_1.b.x, 1u, _wgslsmith_sub_u32(var_1.b.x, 3237u)), vec3<u32>(~_wgslsmith_mod_u32(4294967295u, u_input.d.x), min(min(u_input.e.x, var_1.b.x), 26623u), _wgslsmith_clamp_u32(min(8851u, u_input.b), _wgslsmith_clamp_u32(10773u, 1u, var_1.b.x), u_input.b))));
}

fn func_1() -> Struct_2 {
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-242f + -1000f))), -264f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-150f)), _wgslsmith_f_op_f32(floor(304f))), _wgslsmith_div_f32(-128f, _wgslsmith_f_op_f32(max(-159f, 734f))))), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.d.x << (u_input.b % 32u), abs(u_input.e.x)), vec3<u32>(22883u, u_input.b, select(u_input.b, 26654u, true)), vec3<u32>(u_input.b, u_input.e.x | u_input.e.x, ~u_input.d.x))), func_2(), -u_input.a.yxy);
    let var_2 = Struct_2(var_1.d.x, global0[_wgslsmith_index_u32(17944u, 17u)], ~_wgslsmith_add_u32(u_input.e.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6584u, u_input.b), var_1.b), _wgslsmith_mod_u32(var_1.c.x, 1u))), (select(~var_1.b.x, ~u_input.b, any(vec4<bool>(true, true, true, false))) & u_input.b) | _wgslsmith_add_u32(24998u, _wgslsmith_dot_vec4_u32(~vec4<u32>(52507u, 0u, 55688u, 5098u), max(vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, var_1.c.x), vec4<u32>(var_1.c.x, u_input.e.x, var_1.c.x, 2905u)))), _wgslsmith_div_i32(var_1.d.x, ~0i));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~(~(vec4<u32>(var_1.b.x, u_input.e.x, var_1.b.x, 0u) | vec4<u32>(var_2.c, 0u, 10233u, var_1.c.x)))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(abs(0u), 1u), 4294967295u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.d.x, u_input.b, 0u, var_2.c)), vec4<u32>(var_1.c.x, 38889u, 1u, 4294967295u) | vec4<u32>(u_input.b, 1u, u_input.b, 3095u)), reverseBits(max(4294967295u, var_1.c.x))), reverseBits(vec4<u32>(~var_1.c.x, u_input.b & var_1.c.x, 4294967295u, ~4294967295u)))), 17u)];
    var var_4 = 1u;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(705f * -215f) + var_0.b.a.x))), _wgslsmith_f_op_f32(-1997f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2321f)))))), _wgslsmith_f_op_f32(-2095f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_div_f32(1570f, -163f))))));
    var_0 = Struct_2(2147483647i, var_0.b, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), var_0.d, ~(~(~2147483647i)));
    let var_2 = false;
    global1 = ~abs(_wgslsmith_div_u32(1u, func_2().x));
    var_0 = func_1();
    var var_3 = func_1().b;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.a.wy);
}

