struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: i32 = 13814i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: f32) -> u32 {
    let var_0 = !(!(!any(!vec4<bool>(true, true, arg_0.x, arg_0.x))));
    return _wgslsmith_mod_u32(u_input.a.x, reverseBits(u_input.a.x) & u_input.a.x);
}

fn func_2() -> Struct_5 {
    let var_0 = ~select(~(~u_input.a), vec2<u32>(_wgslsmith_sub_u32(16448u, u_input.a.x ^ u_input.a.x), ~countOneBits(u_input.a.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    global1 = min(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(vec2<bool>(true, false), vec4<bool>(true, true, true, true), _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(19639u, 24u)]), vec2<i32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), -527f), ~_wgslsmith_sub_u32(26283u, var_0.x)), 24u)], min(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 24u)], ~(~global0[_wgslsmith_index_u32(54957u, 24u)]) << (_wgslsmith_add_u32(1u, 21118u) % 32u)));
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    var var_1 = all(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), global0[_wgslsmith_index_u32(u_input.a.x, 24u)] <= ~(-81050i)), select(vec3<bool>(true, true, select(true, false, false)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), all(vec3<bool>(false, false, false)))), true));
    return Struct_5(select(~vec4<u32>(12276u, 4294967295u | u_input.a.x, _wgslsmith_add_u32(0u, 50676u), func_3(vec2<bool>(true, true), vec4<bool>(false, false, false, false), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], -27107i), 362f)), ~vec4<u32>(~var_0.x, ~u_input.a.x, 0u, min(4294967295u, var_0.x)), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(413f, _wgslsmith_f_op_f32(sign(2110f)), _wgslsmith_f_op_f32(f32(-1f) * -630f))), vec2<bool>(min(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)]) > _wgslsmith_div_i32(1i, global0[_wgslsmith_index_u32(11725u, 24u)]), any(vec3<bool>(true, false, true))), true, Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(53968i, global0[_wgslsmith_index_u32(4294967295u, 24u)], 0i, global0[_wgslsmith_index_u32(var_0.x, 24u)]), -vec4<i32>(2137i, -2147483647i, 29506i, 1i)), vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(44602u, 19073u), 24u)], max(3206i, -43573i)), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(50267u, 24u)] << (26228u % 32u), 1i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2480f, _wgslsmith_f_op_f32(trunc(-1000f)), true))))));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2();
    let var_1 = ~vec4<u32>(22976u, ~func_3(var_0.b.b, vec4<bool>(false, true, false, false), var_0.b.d.b, _wgslsmith_f_op_f32(f32(-1f) * -666f)), 1u, 1u);
    let var_2 = Struct_3(var_1.x, select(select(var_0.b.b, vec2<bool>(var_0.b.c, all(vec4<bool>(false, false, true, false))), false), !var_0.b.b, (!var_0.b.c || true) && (~1i == abs(global0[_wgslsmith_index_u32(21396u, 24u)]))));
    var_0 = func_2();
    let var_3 = 1u;
    return Struct_4(Struct_3(var_1.x | _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, 0u, var_0.a.x), var_0.a), ~38919u), vec2<bool>(var_0.b.c, var_0.b.b.x)), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>((all(vec3<bool>(true, true, true)) & select(true, true, false)) && (_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)]) >= -5881i), true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, false, false))), all(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-278f - -154f), 1517f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(232f, 384f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1646f, -754f))))));
    let var_2 = Struct_3(1u, vec2<bool>(any(!(!vec4<bool>(var_0.x, var_0.x, false, true))), !(!var_0.x) && var_0.x));
    var var_3 = func_1();
    var var_4 = any(!select(!vec4<bool>(true, var_0.x, false, var_2.b.x), !vec4<bool>(var_3.b.b.x, var_0.x, var_0.x, true), vec4<bool>(false, var_2.b.x, var_0.x, true)));
    var var_5 = func_1().b.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 178f, var_1.x, -102f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, 477f, var_1.x, var_1.x))))), countOneBits(var_2.a));
}

