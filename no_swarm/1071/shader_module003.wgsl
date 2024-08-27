struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: Struct_2 = Struct_2(vec4<u32>(1u, 0u, 86824u, 78869u));

var<private> global2: array<Struct_1, 14>;

var<private> global3: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>) -> f32 {
    global2 = array<Struct_1, 14>();
    global0 = array<Struct_2, 11>();
    global2 = array<Struct_1, 14>();
    global0 = array<Struct_2, 11>();
    let var_0 = ~(~(~u_input.b | countOneBits(~53029u)));
    return arg_1.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = true;
    var_0 = all(vec2<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)))) | true;
    var var_1 = arg_0;
    let var_2 = arg_1;
    var var_3 = global1.a.x;
    return vec2<i32>(-1i) * -firstLeadingBit(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2703i, -2147483647i), vec2<i32>(-1i, 42762i), vec2<i32>(71011i, -82658i)));
}

fn func_4(arg_0: vec2<i32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 11u)];
    global1 = global0[_wgslsmith_index_u32(global1.a.x, 11u)];
    let var_1 = any(!vec3<bool>(any(vec4<bool>(true, true, true, true)), !any(vec4<bool>(false, false, true, true)), false));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f)), 1f)) - _wgslsmith_f_op_f32(f32(-1f) * -1941f));
    global2 = array<Struct_1, 14>();
    return 4294967295u;
}

fn func_1(arg_0: bool) -> u32 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(4294967295u, 11u)], _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-103f, 1503f, -614f), _wgslsmith_div_vec3_f32(vec3<f32>(-701f, 1153f, -1824f), vec3<f32>(-1000f, 977f, 280f)), !arg_0)))))));
    var var_0 = global0[_wgslsmith_index_u32(global1.a.x, 11u)];
    global3 = _wgslsmith_f_op_f32(1138f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-300f, -189f) * -412f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(130f, 1071f, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1038f))))));
    var var_1 = global2[_wgslsmith_index_u32(func_4(func_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.a.x, global1.a.x), 11u)], Struct_2(max(~var_0.a, vec4<u32>(u_input.b, 3918u, 0u, u_input.a))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(477f, 906f)), _wgslsmith_f_op_f32(f32(-1f) * -1101f), _wgslsmith_f_op_f32(-1227f + -932f)), 22297u, ~4294967295u))), 14u)];
    var var_2 = Struct_1(var_1.a, _wgslsmith_mod_u32(4294967295u, var_1.c), _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, u_input.b, global1.a.x), vec3<u32>(68422u, var_1.b, 15300u), arg_0), ~vec3<u32>(0u, 64180u, var_0.a.x))) ^ firstTrailingBit(4294967295u << (~global1.a.x % 32u)));
    return ~1u;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1759f, -406f, arg_0.a.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -114f, _wgslsmith_f_op_f32(floor(-801f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_0.a)) + _wgslsmith_f_op_vec3_f32(-arg_0.a)), arg_3)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_1.a.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a * arg_0.a)), all(!vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x)))), arg_3.x)), 0u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(73787u, firstLeadingBit(firstTrailingBit(arg_1.b))), _wgslsmith_div_u32(93089u << (arg_1.c % 32u), 33126u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.a.zx, arg_0.a.yx, arg_3.x | any(!vec2<bool>(true, arg_3.x)))));
    var var_3 = select(select(arg_3, arg_3, vec3<bool>(true, true, true)), !select(!arg_3, !(!vec3<bool>(true, arg_3.x, false)), all(vec4<bool>(true, arg_3.x, true, arg_3.x)) & true), select(!vec3<bool>(arg_3.x, true, -1000f > arg_1.a.x), vec3<bool>(all(!arg_3), all(vec2<bool>(true, arg_3.x)), arg_3.x), true));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.a), 39099u, 0u);
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.a.yz, ~global1.a.zz), 11u)];
    var var_1 = func_5(global2[_wgslsmith_index_u32(0u & ~global1.a.x, 14u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~abs(global1.a.x), _wgslsmith_clamp_u32(abs(~var_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 13514u, 1u, var_0.a.x), vec4<u32>(var_0.a.x, 61505u, var_0.a.x, global1.a.x)), _wgslsmith_mod_u32(4294967295u, var_0.a.x) ^ 75603u)), 14u)], global0[_wgslsmith_index_u32(func_1(true), 11u)], !(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))));
    var var_2 = u_input.a;
    let var_3 = global0[_wgslsmith_index_u32(0u, 11u)];
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 1i, 2996i), vec4<i32>(-1115i, -1i, -1i, -6676i)), ~8863i, func_3(Struct_2(var_3.a), global0[_wgslsmith_index_u32(u_input.b, 11u)], global2[_wgslsmith_index_u32(var_3.a.x, 14u)]).x >> (var_0.a.x % 32u), 0i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(1i, 67331i, -2147483647i)), vec3<i32>(_wgslsmith_clamp_i32(1i, abs(1i), 1i), ~(i32(-1i) * -49479i), -(i32(-1i) * -3677i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1124f, 137f)) - _wgslsmith_div_f32(-1484f, -1024f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(375f, -168f, 1000f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(683f, 299f, 1000f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1353f, 459f, -808f))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2322f, 396f) * _wgslsmith_f_op_f32(-399f - 1000f)), 672f, _wgslsmith_f_op_f32(f32(-1f) * -365f))), u_input.b & _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.a.zwy, global1.a.xww, vec3<u32>(1u, 124192u, 0u)), vec3<u32>(14068u, var_0.a.x, global1.a.x) ^ vec3<u32>(1u, 4294967295u, 15861u), _wgslsmith_mod_vec3_u32(vec3<u32>(20545u, u_input.b, 975u), vec3<u32>(global1.a.x, u_input.a, u_input.b))), vec3<u32>(~var_3.a.x, ~8865u, u_input.a & u_input.a)));
}

