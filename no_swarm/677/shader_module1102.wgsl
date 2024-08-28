struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1979i, 52998i);

var<private> global1: array<i32, 20> = array<i32, 20>(1i, 7775i, 13036i, 52342i, i32(-2147483648), 2147483647i, 8577i, i32(-2147483648), 16165i, -49915i, 1i, 10169i, -52959i, 0i, 2147483647i, 0i, -7275i, -1i, -15083i, 27777i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_1(select(vec2<bool>(select(0i, -1i, true) == _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(93646i, global1[_wgslsmith_index_u32(0u, 20u)])), true), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0)), 1568f)), arg_0));
    let var_2 = select(select(select(vec4<bool>(all(vec2<bool>(var_0.a.x, false)), var_0.a.x, !var_0.a.x, var_0.a.x), !select(vec4<bool>(false, var_0.a.x, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x)), !(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true))), vec4<bool>(var_0.a.x, true, (var_0.a.x | true) && (var_0.a.x & var_0.a.x), !all(vec4<bool>(false, false, true, true))), true), vec4<bool>(var_0.a.x, false, select(var_0.a.x, var_0.a.x, true), var_0.a.x), !any(select(select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, false), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)), !vec4<bool>(false, var_0.a.x, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true))));
    let var_3 = vec3<u32>(548u, 54285u, 47864u);
    let var_4 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_3.x >> (u_input.c.x % 32u), ~u_input.c.x, ~41971u, 42802u)), select(abs(vec4<u32>(36241u, 23123u, 0u, 0u)), ~vec4<u32>(var_3.x, 0u, 54706u, u_input.c.x), any(var_2)) >> (min(vec4<u32>(u_input.c.x, 18361u, var_3.x, 6381u) << (vec4<u32>(var_3.x, 10018u, u_input.c.x, 0u) % vec4<u32>(32u)), abs(vec4<u32>(20575u, 65810u, 0u, 50000u))) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32((_wgslsmith_mult_vec4_u32(vec4<u32>(7376u, 0u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, var_3.x, 62443u)) | ~vec4<u32>(7855u, 27735u, var_3.x, 20672u)) ^ ~max(vec4<u32>(1u, var_3.x, var_3.x, var_3.x), vec4<u32>(var_3.x, u_input.c.x, var_3.x, 22614u)), vec4<u32>(41449u, ~countOneBits(u_input.c.x), ~(~4294967295u), _wgslsmith_div_u32(var_3.x, u_input.c.x))));
    return var_0.a.x & var_0.a.x;
}

fn func_2() -> u32 {
    global0 = abs(u_input.d);
    var var_0 = Struct_1(select(vec2<bool>(any(vec4<bool>(true, true, true, true)), func_3(_wgslsmith_div_f32(-932f, 389f))), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 20u)] > _wgslsmith_clamp_i32(17564i, 2147483647i, -2147483647i))));
    var var_1 = _wgslsmith_div_i32(-15480i, countOneBits(global1[_wgslsmith_index_u32(select(min(19660u, 12579u), max(u_input.c.x >> (u_input.c.x % 32u), 28776u), any(!vec3<bool>(var_0.a.x, true, var_0.a.x))), 20u)]));
    global0 = -u_input.a.zw | ~vec2<i32>(global0.x, _wgslsmith_mult_i32(global0.x, ~u_input.b.x));
    var var_2 = reverseBits(~u_input.c.x) >> (u_input.c.x % 32u);
    return ~1u;
}

fn func_1() -> vec4<i32> {
    var var_0 = vec3<bool>(false, all(vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, true, true, true)) | false);
    global0 = vec2<i32>(_wgslsmith_add_i32(-_wgslsmith_mult_i32(-1i, max(2147483647i, 1i)), global0.x), -21941i);
    let var_1 = vec4<bool>(true, true, var_0.x, any(vec3<bool>(all(vec4<bool>(true, true, true, true)), any(select(var_0.xx, var_0.zx, var_0.x)), true)));
    let var_2 = -(~_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.d.x, _wgslsmith_mult_i32(-1i, 12023i)), _wgslsmith_mult_vec2_i32(~vec2<i32>(64640i, u_input.a.x), u_input.d)));
    var var_3 = select(var_1, !var_1, var_1);
    return abs(vec4<i32>(-44618i, abs(-global0.x) >> (u_input.c.x % 32u), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(func_2(), firstLeadingBit(u_input.c.x)), 20u)], ~u_input.b.x >> (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(~func_1(), u_input.a | -(~(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global0.x, -8051i, 2147483647i))));
    global1 = array<i32, 20>();
    global0 = countOneBits(var_0.zx);
    var var_1 = Struct_1(!(!vec2<bool>(all(vec4<bool>(false, true, true, false)), func_3(-1946f))));
    global0 = var_0.zz;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-873f, -2547f)), -1061f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + -614f), -619f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(305f)), _wgslsmith_f_op_f32(round(1687f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(-1437f + _wgslsmith_f_op_f32(-747f + 150f)), _wgslsmith_f_op_f32(round(-1056f)), -1000f)), var_1.a.x));
    let var_3 = Struct_3(-274f, vec2<f32>(var_2.x, 374f), ~vec2<u32>(u_input.c.x, ~u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(742f, var_3.b.x, 479f, 341f), vec4<f32>(2067f, var_2.x, var_2.x, var_2.x), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_3.b.x, var_2.x, 156f)))))), _wgslsmith_f_op_f32(1531f * 1097f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-991f, _wgslsmith_div_f32(724f, var_3.b.x)))), var_2.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1214f) - 2062f) * var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(var_3.a - 1159f)) - _wgslsmith_f_op_f32(sign(var_3.b.x)))));
}

