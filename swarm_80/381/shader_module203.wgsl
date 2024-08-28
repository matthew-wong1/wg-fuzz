struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: vec4<i32> = vec4<i32>(8347i, 40318i, 1i, -1i);

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> i32 {
    global1 = -countOneBits(-vec4<i32>(-52453i, _wgslsmith_div_i32(2147483647i, arg_2), reverseBits(u_input.a), u_input.a));
    let var_0 = false;
    var var_1 = Struct_1(arg_0.a, vec4<bool>(!arg_0.b.x, abs(-2147483647i) <= _wgslsmith_mod_i32(~(-1i), 1i | u_input.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_1.x, -712f)))) >= -642f, arg_0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(-arg_1))), vec2<f32>(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + arg_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -2840f))));
    var var_2 = true;
    let var_3 = global2[_wgslsmith_index_u32(~4294967295u, 9u)];
    return _wgslsmith_dot_vec2_i32(global1.zx, global1.xy);
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 26480i, global1.x, -39511i), vec4<i32>(-2147483647i, global1.x, global1.x, global1.x)), firstTrailingBit(~global1.x)), vec2<i32>(firstLeadingBit(countOneBits(func_3(global2[_wgslsmith_index_u32(4294967295u, 9u)], vec4<f32>(1000f, 537f, 2948f, -1081f), global1.x))), 1i >> (u_input.b.x % 32u)));
    var var_1 = abs(-_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(-global1.yw, global1.zy), vec2<i32>(2147483647i, ~20325i), _wgslsmith_mod_vec2_i32(global1.xy, -vec2<i32>(58747i, u_input.a))));
    var var_2 = true;
    global2 = array<Struct_1, 9>();
    var var_3 = 0i;
    return -global1.xww;
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<f32>(-1395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-196f)), 564f)))));
    global2 = array<Struct_1, 9>();
    var var_1 = i32(-1i) * -countOneBits(u_input.a & global1.x);
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(global1.ww, global1.zz), -u_input.a, -10565i), -func_2());
    let var_3 = vec4<i32>(global1.x, -2036i, u_input.a, -max(_wgslsmith_add_i32(countOneBits(34701i), ~global1.x), ~(global1.x << (u_input.b.x % 32u))));
    return global0[_wgslsmith_index_u32(u_input.b.x, 20u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = u_input.a;
    global2 = array<Struct_1, 9>();
    global1 = ~vec4<i32>(6369i, select(-func_2().x, -22613i, all(arg_0.b)), var_0, -18554i);
    global2 = array<Struct_1, 9>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(arg_1.c.yzz)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-917f, arg_1.c.x, -743f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_1.c.zyx))))));
    return !select(arg_0.b, !(!func_1().b), select(!func_1().b, !(!arg_1.b), any(!arg_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 20u)];
    global0 = array<Struct_1, 20>();
    var var_1 = var_0.c.xx;
    var_1 = var_0.c.zy;
    var var_2 = -428f;
    global0 = array<Struct_1, 20>();
    let var_3 = select(!select(func_4(func_1(), Struct_1(vec4<u32>(1u, 6092u, 4294967295u, u_input.b.x), var_0.b, var_0.c, var_0.c.zz), vec2<f32>(-978f, var_0.c.x)), !var_0.b, var_0.b.x), vec4<bool>(true & ((u_input.a == global1.x) && true), var_0.b.x, !var_0.b.x, func_1().b.x), vec4<bool>(var_0.b.x, func_1().b.x, any(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true)), !var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, -1216f))) * func_1().d)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, countOneBits(u_input.b.x)) ^ ~abs(vec2<u32>(4294967295u, var_0.a.x)), ~(~u_input.b.zz)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + -626f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1016f)) - var_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-561f + _wgslsmith_f_op_f32(-var_0.d.x)), -270f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))))), var_0.a.yzy);
}

