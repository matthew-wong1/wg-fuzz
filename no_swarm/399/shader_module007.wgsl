struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

var<private> global3: array<u32, 8>;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<f32> {
    global2 = array<vec3<bool>, 4>();
    let var_0 = global4.a;
    global2 = array<vec3<bool>, 4>();
    let var_1 = Struct_2(global4.a, global4.a, global4.b);
    global2 = array<vec3<bool>, 4>();
    return vec3<f32>(1000f, 1112f, 807f);
}

fn func_2() -> Struct_3 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -550f) - _wgslsmith_f_op_f32(194f - -380f)), 1f, _wgslsmith_f_op_f32(global1.x - global1.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1.x)), -323f)), global1.x, _wgslsmith_f_op_f32(trunc(-1000f)))));
    var var_0 = abs(global4.a.a);
    return Struct_3(!(!(!(!global0.yxw))), ~0u, false, vec4<f32>(global1.x, -402f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.x)), -294f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_3) -> u32 {
    let var_0 = !select(!(!vec3<bool>(arg_2.x, false, false)), arg_2.wyz, vec3<bool>(!arg_3.a.x, !(global4.b.d || global4.c.d), true));
    var var_1 = arg_3.b;
    var var_2 = arg_1.a & ~firstLeadingBit(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, arg_1.b.x, 1i), vec3<i32>(-40050i, global4.c.a, u_input.b))));
    var_1 = (u_input.a.x >> ((global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, 20870u, arg_1.c.x), ~global4.c.e.x, global4.b.e.x), 8u)] << ((global4.a.c.x | countOneBits(global3[_wgslsmith_index_u32(arg_3.b, 8u)])) % 32u)) % 32u)) | u_input.a.x;
    var var_3 = !(!vec2<bool>(true, global0.x));
    return _wgslsmith_div_u32(arg_3.b, ~arg_1.e.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(round(global1.x));
    global2 = array<vec3<bool>, 4>();
    let var_1 = ~min(24842u, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))), Struct_1(~2147483647i, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -1912i), vec2<i32>(1i, global4.a.b.x)), select(vec3<u32>(arg_1.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 8u)], arg_0.c.x), u_input.a.yww, arg_0.d), arg_2, select(arg_0.e, vec2<u32>(arg_0.c.x, arg_0.e.x), global4.c.d)), vec4<bool>(true | arg_2, arg_2, global0.x || global0.x, !global4.a.d), func_2()));
    let var_2 = global4.b.e.x;
    global1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x))), 443f, global1.x)));
    return Struct_2(global4.b, arg_0, arg_0);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> vec2<u32> {
    return ~(~(u_input.a.xw | arg_0.c.zz)) & vec2<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(global4.a.c.x, arg_1.c.c.x) & (global4.b.c.x ^ 139975u)), ~1u);
}

fn func_6(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2) -> bool {
    var var_0 = ~0i;
    var_0 = 1i;
    var_0 = firstLeadingBit(~u_input.b & -49115i);
    let var_1 = _wgslsmith_f_op_f32(arg_1 - arg_1);
    global3 = array<u32, 8>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(abs(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(global4.a.e, global4.c.e), func_5(Struct_1(u_input.b, vec2<i32>(u_input.b, u_input.b), vec3<u32>(global4.c.c.x, global3[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.a.x), true, u_input.a.zw), func_1(Struct_1(global4.a.a, global4.a.b, vec3<u32>(u_input.a.x, u_input.a.x, 0u), global4.a.d, global4.a.e), u_input.a.zz, false), global1.x))), -1587f, func_1(Struct_1(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-4935i, global4.c.a, 17046i), vec3<i32>(global4.a.a, 1i, u_input.b))), ~vec2<i32>(0i, 806i) >> (reverseBits(vec2<u32>(35201u, global4.b.c.x)) % vec2<u32>(32u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(global4.c.c, vec3<u32>(1u, u_input.a.x, u_input.a.x)), global4.c.c, global4.b.c), global4.c.d, global4.c.e), u_input.a.xx | reverseBits(~u_input.a.yy), any(global0.ww)));
    let var_1 = ~global4.c.b.x;
    var var_2 = vec4<bool>(any(vec4<bool>(true, true, false, global0.x)), firstLeadingBit(5941u) <= (_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(~global4.b.e.x, 8u)], 1u) & u_input.a.x), true, all(!(!select(vec4<bool>(global4.c.d, global0.x, global4.c.d, global4.c.d), vec4<bool>(false, false, false, true), vec4<bool>(global0.x, global4.a.d, true, false)))));
    let var_3 = ~select(vec2<i32>(-5575i, reverseBits(var_1)), abs(global4.c.b) ^ vec2<i32>(_wgslsmith_mult_i32(0i, u_input.b), func_1(global4.c, vec2<u32>(20722u, global4.a.e.x), global0.x).b.a), !vec2<bool>(global0.x, true));
    var var_4 = !(!vec2<bool>(func_6(vec2<u32>(0u, 1103u), _wgslsmith_f_op_f32(ceil(global1.x)), func_1(global4.c, u_input.a.xz, false)), global4.c.d));
    var_2 = vec4<bool>(var_2.x, func_6(~vec2<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], 17239u), global1.x, Struct_2(Struct_1(~(-1i), _wgslsmith_mult_vec2_i32(var_3, var_3), vec3<u32>(10518u, global3[_wgslsmith_index_u32(0u, 8u)], u_input.a.x), !var_2.x, select(u_input.a.xx, vec2<u32>(4294967295u, 105581u), false)), global4.a, global4.a)), !(global0.x & global4.a.d), (!global4.a.d & ((1i < global4.b.b.x) | (global4.b.a >= 0i))) | false);
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

