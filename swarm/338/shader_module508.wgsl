struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, false, true, true, false, true, false, false, true, false, true, true, true, true, false, false, true, true, true, true, true, false, false, false, false, false, false, true, true);

var<private> global1: array<vec2<f32>, 17>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = 30920i;
    var var_1 = arg_0.c.x;
    global1 = array<vec2<f32>, 17>();
    let var_2 = Struct_2(~(((var_0 ^ u_input.d) << (u_input.b % 32u)) | arg_0.d.x), Struct_1(_wgslsmith_mult_i32(-2147483647i, var_0), min(arg_0.d.zz, _wgslsmith_mod_vec2_i32(arg_0.b.b, vec2<i32>(-1i, 0i)))), arg_0.c, ~_wgslsmith_sub_vec3_i32(select(select(vec3<i32>(2147483647i, -2147483647i, -20612i), arg_0.d, vec3<bool>(arg_0.c.x, false, true)), vec3<i32>(24135i, arg_0.a, u_input.d), false), select(arg_0.d, -arg_0.d, !vec3<bool>(true, true, arg_0.c.x))), _wgslsmith_f_op_f32(-arg_0.e));
    let var_3 = ~(~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(67188u, u_input.a), vec2<u32>(45511u, 70324u)) | vec2<u32>(u_input.c, 1u)));
    return 1u;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = 28202u;
    return vec4<bool>(!arg_2.b.x, arg_2.b.x, true, false);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(firstLeadingBit(0u), 17u)] + global1[_wgslsmith_index_u32(~(u_input.c << (~u_input.c % 32u)), 17u)]));
    let var_1 = vec3<i32>(arg_1.a, -49197i, arg_1.d.x << (u_input.b % 32u));
    global1 = array<vec2<f32>, 17>();
    global1 = array<vec2<f32>, 17>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-arg_1.e), select(!(!(!vec3<bool>(arg_1.c.x, false, global0[_wgslsmith_index_u32(u_input.b, 29u)]))), vec3<bool>(-934f < var_0.x, !all(arg_1.c), arg_1.c.x), !all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 29u)], false))), _wgslsmith_mod_u32(~(~select(4294967295u, u_input.b, false)), _wgslsmith_clamp_u32(27009u, ~(u_input.b ^ u_input.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 22919u, 4294967295u), ~vec3<u32>(u_input.c, u_input.c, 4294967295u)))));
    return func_3(arg_0, vec2<u32>(_wgslsmith_add_u32(min(select(var_2.c, 0u, false), var_2.c), ~(4294967295u >> (u_input.c % 32u))), _wgslsmith_sub_u32(~4294967295u, u_input.c)), Struct_3(_wgslsmith_div_f32(440f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.e), var_2.a)), select(vec3<bool>(u_input.a != var_2.c, arg_1.c.x, global0[_wgslsmith_index_u32(~1u, 29u)]), var_2.b, true), _wgslsmith_sub_u32(func_2(Struct_2(arg_0.b.x, Struct_1(-2147483647i, arg_0.b), arg_1.c, vec3<i32>(arg_2.b.x, arg_2.a, arg_1.d.x), 602f)), u_input.a) ^ 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 29u)], true, !(!global0[_wgslsmith_index_u32(200u, 29u)]) && global0[_wgslsmith_index_u32(~u_input.a, 29u)], any(vec3<bool>(all(func_1(Struct_1(-17048i, vec2<i32>(0i, u_input.d)), Struct_2(u_input.d, Struct_1(2147483647i, vec2<i32>(u_input.d, u_input.d)), vec2<bool>(true, true), vec3<i32>(u_input.d, u_input.d, u_input.d), 1000f), Struct_1(20399i, vec2<i32>(u_input.d, 0i)))), false, true)));
    global0 = array<bool, 29>();
    let var_1 = Struct_2(_wgslsmith_add_i32((i32(-1i) * -u_input.d) & u_input.d, u_input.d), Struct_1(-(~min(-22087i, u_input.d)), firstLeadingBit(vec2<i32>(-u_input.d, i32(-1i) * -1i))), !select(!vec2<bool>(global0[_wgslsmith_index_u32(14319u, 29u)], true), vec2<bool>(any(var_0.xxw), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], false, global0[_wgslsmith_index_u32(49711u, 29u)]))), var_0.wy), vec3<i32>(-(~min(-1i, 0i)), reverseBits(2575i), u_input.d), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1270f)))));
    global1 = array<vec2<f32>, 17>();
    var_0 = !vec4<bool>(true, func_3(Struct_1(~0i, abs(var_1.b.b)), vec2<u32>(u_input.a, ~61915u), Struct_3(_wgslsmith_f_op_f32(var_1.e + 1211f), !var_0.yzx, 35631u)).x, var_1.c.x, false);
    var_0 = !select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.x, global0[_wgslsmith_index_u32(58709u, 29u)], true), vec4<bool>(true, var_0.x, var_0.x, global0[_wgslsmith_index_u32(17841u, 29u)]))), vec4<bool>(true, false && func_1(var_1.b, var_1, var_1.b).x, all(func_1(var_1.b, Struct_2(5589i, Struct_1(u_input.d, vec2<i32>(u_input.d, -2147483647i)), var_1.c, vec3<i32>(var_1.a, 2147483647i, -14917i), -797f), Struct_1(var_1.a, var_1.d.zy))), select(all(vec4<bool>(true, var_0.x, var_0.x, false)), global0[_wgslsmith_index_u32(~u_input.a, 29u)], false)), vec4<bool>(!var_1.c.x, false, false, global0[_wgslsmith_index_u32(21063u, 29u)]));
    let var_2 = ~vec3<i32>(_wgslsmith_add_i32(-39072i, -7372i), max(-1i, 1i & ~u_input.d), -2147483647i);
    var var_3 = -(u_input.d << (_wgslsmith_mult_u32(1u, u_input.b) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, var_1.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e, var_1.e, var_1.e) - vec3<f32>(var_1.e, var_1.e, 338f)))) - vec3<f32>(var_1.e, var_1.e, _wgslsmith_f_op_f32(var_1.e + 1272f)))), ~(~(~vec4<u32>(u_input.c, u_input.c, 54687u, u_input.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1235f, 1759f, -962f)));
}

