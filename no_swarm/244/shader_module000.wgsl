struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 21>;

var<private> global2: bool = false;

var<private> global3: vec3<u32>;

var<private> global4: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = abs(vec2<i32>(arg_0, u_input.d.x));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(715f, -1761f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1453f * -375f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-637f - -556f) + -724f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-697f, 607f))))), 722f);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -744f, 829f))), vec4<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(abs(var_1))), var_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1439f, 1112f) * _wgslsmith_f_op_f32(var_1 + var_1)), _wgslsmith_f_op_f32(trunc(-1278f)))));
    let var_3 = vec3<i32>(0i, arg_1, abs(~1i));
    global2 = global1[_wgslsmith_index_u32(arg_2.a, 21u)];
    return vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(u_input.c, global0.a.a)) >> (abs(_wgslsmith_sub_u32(global3.x, 4294967295u)) % 32u), _wgslsmith_sub_u32(global0.a.a, global0.a.a)), ~_wgslsmith_mult_u32(~43536u, arg_2.a));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2072f) + _wgslsmith_f_op_f32(-1209f + _wgslsmith_f_op_f32(floor(-285f)))), -513f, countOneBits(2147483647i));
    var var_1 = Struct_2(global0.a.a | reverseBits(global3.x));
    global1 = array<bool, 21>();
    var_1 = global0.a;
    var var_2 = u_input.d.x;
    return 777f;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: bool) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-240f, -304f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(163f - -1567f)), _wgslsmith_f_op_f32(707f - _wgslsmith_f_op_f32(abs(929f))), all(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 21u)], false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2149f))))), -u_input.d.x & _wgslsmith_div_i32(_wgslsmith_mod_i32(8634i, u_input.d.x) & u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-20914i, -9590i, u_input.a, u_input.a), select(vec4<i32>(-1i, u_input.d.x, u_input.a, -50447i), vec4<i32>(u_input.d.x, -75280i, 0i, u_input.d.x), false))));
    var var_1 = ~vec3<i32>(var_0.c, u_input.d.x, var_0.c);
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.b, var_0.b)))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_i32(var_0.c, 19616i), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.c ^ u_input.d.x, _wgslsmith_clamp_i32(u_input.d.x, 0i, 21361i), var_0.c >> (global0.a.a % 32u)), vec3<i32>(-1i) * -vec3<i32>(0i, -2147483647i, 25278i)))), var_1.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(497f + _wgslsmith_f_op_f32(var_0.a + 117f))))), _wgslsmith_f_op_f32(-var_0.a), u_input.d.x);
    let var_3 = -(~(-2147483647i));
    return any(vec4<bool>(!all(select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(false, global1[_wgslsmith_index_u32(50987u, 21u)], global0.b), vec3<bool>(false, false, global0.b))), !(_wgslsmith_div_i32(0i, 2147483647i) <= select(var_0.c, var_0.c, true)), arg_2, true && ((global1[_wgslsmith_index_u32(87502u, 21u)] && arg_2) == global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!vec2<bool>(24503u >= u_input.b, global1[_wgslsmith_index_u32(~u_input.b, 21u)]), vec2<bool>(true, func_2(0u, func_1(12570i, 0i, Struct_2(global0.a.a)), all(vec2<bool>(global0.b, global1[_wgslsmith_index_u32(global0.a.a, 21u)])))), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(global3.x, 21u)]), vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 21u)], false)), vec2<bool>(global1[_wgslsmith_index_u32(107397u, 21u)], global1[_wgslsmith_index_u32(u_input.c, 21u)]), vec2<bool>(true, true)));
    var var_1 = Struct_2(abs(~37977u));
    let var_2 = global3.zy;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2158f))), -1000f, _wgslsmith_f_op_f32(ceil(-261f)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, -819f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a, vec3<i32>(27121i, u_input.d.x, -1i))) - 1276f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(1i, vec3<i32>(67331i, -1i, -2147483647i))), -204f)))), _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(u_input.a, u_input.d.x, u_input.a, -12425i)) ^ firstLeadingBit(vec4<i32>(u_input.d.x, u_input.a, u_input.a, 31026i)), -_wgslsmith_mult_vec4_i32(abs(vec4<i32>(15972i, u_input.a, u_input.a, u_input.a)), max(vec4<i32>(u_input.a, 13065i, u_input.d.x, 1644i), vec4<i32>(u_input.d.x, -26367i, u_input.d.x, 2147483647i)))), u_input.c);
}

