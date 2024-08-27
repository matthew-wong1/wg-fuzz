struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32;

var<private> global2: array<bool, 17>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> i32 {
    global1 = 1442f;
    global2 = array<bool, 17>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(1696f)), -2055f, _wgslsmith_f_op_f32(-arg_2));
    var var_1 = Struct_3(global0.a.c.b ^ 12909i, _wgslsmith_f_op_f32(select(478f, global0.a.c.a.x, all(vec3<bool>(true, false, true)))), arg_1.c, vec4<i32>(-_wgslsmith_mod_i32(abs(global0.a.c.b), -1i), -19698i, ~(-1i), 1i));
    var var_2 = Struct_4(global0.a);
    return var_1.c.b;
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~_wgslsmith_sub_u32(132u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 11853u, 0u, 1u)) ^ u_input.a.x));
    var var_1 = u_input.c.x;
    var var_2 = _wgslsmith_clamp_vec3_i32(global0.a.d.yzz, vec3<i32>(func_3(!global2[_wgslsmith_index_u32(u_input.a.x, 17u)], Struct_3(-47542i, -1138f, Struct_1(vec2<f32>(726f, global0.a.b), 53247i, global0.a.a), vec4<i32>(global0.a.d.x, -2147483647i, u_input.b, 0i)), _wgslsmith_f_op_f32(-global0.a.b)), ~(-41675i), ~_wgslsmith_sub_i32(global0.a.c.c, 27174i)), u_input.c) << (min(~u_input.a.ywx, ~u_input.a.ywz) % vec3<u32>(32u));
    return global0.a.c;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_4) -> u32 {
    var var_0 = -(~(-arg_3.a.c.b));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.x, 1950f, arg_3.a.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(140f, -972f, global0.a.c.a.x) + vec3<f32>(1052f, -450f, arg_1.a.x)), arg_0.xxx)))));
    let var_2 = firstLeadingBit(_wgslsmith_div_u32(~(~firstLeadingBit(4294967295u)), 1u));
    var_0 = _wgslsmith_clamp_i32(55484i, ~(-23969i), arg_2.x);
    var var_3 = func_2();
    return 0u;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = 38976u | select(u_input.a.x, func_4(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], arg_2, u_input.c.x >= -1i), func_2(), global0.a.d.yz, Struct_4(global0.a)), var_0);
    var var_2 = Struct_2(func_2(), func_2(), -1000f, select(!(!(!vec2<bool>(arg_2, var_0))), select(!vec2<bool>(global2[_wgslsmith_index_u32(105661u, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)]), select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec4<bool>(false, global2[_wgslsmith_index_u32(10699u, 17u)], global2[_wgslsmith_index_u32(var_1, 17u)], var_0))), select(vec2<bool>(true, var_0), select(vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 17u)]), vec2<bool>(var_0, arg_2), global2[_wgslsmith_index_u32(1u, 17u)]), true)), vec2<bool>(true, (1u < u_input.a.x) || all(vec3<bool>(arg_2, global2[_wgslsmith_index_u32(75772u, 17u)], true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1595f * _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-123f))))));
    return Struct_2(func_2(), var_2.b, arg_1.a.x, !var_2.d, _wgslsmith_f_op_vec2_f32(-arg_1.a));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a.x) - arg_1.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) + global0.a.b));
    let var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(1u, abs(u_input.a.x)), 1u);
    var var_1 = func_1(_wgslsmith_mult_i32(arg_2, 37043i), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.c.a, vec2<f32>(arg_1.b.a.x, 623f)))))), ~global0.a.d.x, max(arg_2, -_wgslsmith_div_i32(-1i, 2147483647i))), true).a;
    let var_2 = firstLeadingBit(vec3<u32>(var_0, 0u, _wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, 4294967295u, u_input.a.x, u_input.a.x), u_input.a), ~vec4<u32>(16786u, 0u, 24450u, 3831u), global2[_wgslsmith_index_u32(0u << (var_0 % 32u), 17u)]), countOneBits(u_input.a))));
    let var_3 = u_input.a.x;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global0.a.c.a);
    let var_1 = func_5(Struct_3(0i, global0.a.c.a.x, Struct_1(vec2<f32>(global0.a.c.a.x, 1737f), ~global0.a.a, abs(max(u_input.c.x, u_input.b))), vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -38145i, abs(-1i)), firstLeadingBit(global0.a.a), 26647i, global0.a.d.x)), func_1(-57632i, global0.a.c, any(select(!vec3<bool>(false, true, global2[_wgslsmith_index_u32(18251u, 17u)]), select(vec3<bool>(false, false, true), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), true), global2[_wgslsmith_index_u32(1u, 17u)]))), ~global0.a.a);
    var var_2 = vec2<f32>(func_5(global0.a, var_1, 0i).e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), func_1(var_1.b.b, Struct_1(global0.a.c.a, var_1.b.b, var_1.a.b), var_1.d.x).e.x))));
    var var_3 = var_0.x;
    var_2 = vec2<f32>(func_1(_wgslsmith_sub_i32(-(30605i << (u_input.a.x % 32u)), -51823i), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.c)), _wgslsmith_f_op_f32(select(global0.a.c.a.x, var_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 17u)]))), var_1.a.c, 1i), true).a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-2147483647i, Struct_1(var_1.e, 0i, global0.a.d.x), true).e.x * _wgslsmith_f_op_f32(var_0.x * -959f))) * _wgslsmith_f_op_f32(f32(-1f) * -114f)));
    let var_4 = select(~(~(~_wgslsmith_clamp_vec2_u32(u_input.a.wz, vec2<u32>(17358u, u_input.a.x), u_input.a.zz))), _wgslsmith_div_vec2_u32(u_input.a.wz, vec2<u32>(u_input.a.x, ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x))), any(vec3<bool>(!var_1.d.x, _wgslsmith_sub_u32(1u, u_input.a.x) < firstLeadingBit(u_input.a.x), all(vec4<bool>(true, false, false, true)) | (global0.a.c.a.x > var_1.a.a.x))));
    var var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.c, 870f, 1701f, var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-961f, global0.a.b, var_2.x, global0.a.b)))), vec4<f32>(_wgslsmith_div_f32(var_2.x, 871f), _wgslsmith_f_op_f32(max(func_2().a.x, var_0.x)), _wgslsmith_f_op_f32(var_1.e.x - _wgslsmith_f_op_f32(var_0.x - -953f)), var_2.x), ~u_input.a.x == u_input.a.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(476f, var_1.c)), 336f, _wgslsmith_f_op_f32(f32(-1f) * -187f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.b)) + 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-775f, var_1.c, var_0.x, -565f)))))));
    global1 = func_2().a.x;
    global0 = Struct_4(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.b.c, ~(-1i) ^ (_wgslsmith_div_i32(24972i, var_1.b.b) & -u_input.c.x), u_input.c.x, _wgslsmith_add_i32(-(global0.a.d.x << (15138u % 32u)), _wgslsmith_mult_i32(1704i, ~var_1.a.b))), global0.a.a);
}

