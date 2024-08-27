struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec3<bool>(false, false, false), 23498i, true, Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, true, false))), Struct_3(vec3<bool>(true, false, true), -1i, true, Struct_1(vec2<bool>(true, true), true, vec3<bool>(true, true, false))), Struct_3(vec3<bool>(false, true, true), 2147483647i, false, Struct_1(vec2<bool>(false, false), true, vec3<bool>(true, true, false))), Struct_3(vec3<bool>(false, false, true), 1i, true, Struct_1(vec2<bool>(false, true), false, vec3<bool>(false, false, true))), Struct_3(vec3<bool>(true, false, true), 1608i, false, Struct_1(vec2<bool>(false, true), true, vec3<bool>(true, true, true))), Struct_3(vec3<bool>(false, false, true), 2147483647i, false, Struct_1(vec2<bool>(false, false), false, vec3<bool>(true, true, true))), Struct_3(vec3<bool>(true, false, false), 78782i, true, Struct_1(vec2<bool>(false, true), true, vec3<bool>(false, false, true))), Struct_3(vec3<bool>(false, true, false), 0i, true, Struct_1(vec2<bool>(true, false), true, vec3<bool>(false, false, false))), Struct_3(vec3<bool>(false, true, true), -1i, false, Struct_1(vec2<bool>(false, false), true, vec3<bool>(true, true, true))), Struct_3(vec3<bool>(false, false, false), -1i, true, Struct_1(vec2<bool>(false, true), true, vec3<bool>(false, true, true))), Struct_3(vec3<bool>(true, false, false), 2147483647i, true, Struct_1(vec2<bool>(true, false), true, vec3<bool>(false, true, false))), Struct_3(vec3<bool>(true, true, true), 24900i, true, Struct_1(vec2<bool>(true, true), false, vec3<bool>(false, false, true))), Struct_3(vec3<bool>(false, false, true), 12983i, false, Struct_1(vec2<bool>(false, false), false, vec3<bool>(true, false, false))), Struct_3(vec3<bool>(true, true, false), -1i, true, Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, true, true))), Struct_3(vec3<bool>(true, false, false), -1i, true, Struct_1(vec2<bool>(false, false), false, vec3<bool>(false, false, false))), Struct_3(vec3<bool>(false, false, true), 19897i, false, Struct_1(vec2<bool>(false, false), true, vec3<bool>(true, false, false))), Struct_3(vec3<bool>(true, true, true), 0i, false, Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, true, false))), Struct_3(vec3<bool>(true, true, true), 32907i, true, Struct_1(vec2<bool>(true, true), false, vec3<bool>(true, false, false))), Struct_3(vec3<bool>(false, false, true), 1i, false, Struct_1(vec2<bool>(true, false), false, vec3<bool>(false, true, true))), Struct_3(vec3<bool>(true, true, true), -20395i, true, Struct_1(vec2<bool>(true, true), true, vec3<bool>(true, true, true))), Struct_3(vec3<bool>(false, false, false), 0i, true, Struct_1(vec2<bool>(true, false), false, vec3<bool>(true, true, true))));

var<private> global3: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    return max(1u, ~(~u_input.b.x | u_input.b.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>) -> bool {
    var var_0 = Struct_2(global0.a, _wgslsmith_div_f32(1705f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0.b)), global0.b, true)))));
    let var_1 = 37210i;
    var var_2 = global1.d;
    var var_3 = true;
    let var_4 = Struct_3(vec3<bool>(false, true, 35737u >= arg_0.x), -abs(select(abs(u_input.c), ~2147483647i, true)), false, Struct_1(!(!(!vec2<bool>(false, var_0.a.x))), !((false & var_2.a.x) | var_0.a.x), var_0.a));
    return all(var_4.d.a);
}

fn func_2() -> f32 {
    var var_0 = Struct_3(select(vec3<bool>(true, any(global3.a), (u_input.b.x <= 1u) && false), vec3<bool>(global0.a.x & (u_input.b.x > 11335u), true, false), vec3<bool>(global1.b < 0i, any(select(vec4<bool>(false, false, true, true), vec4<bool>(global3.a.x, true, true, global0.a.x), vec4<bool>(true, global3.c.x, global1.a.x, global1.d.b))), global3.c.x)), -(~_wgslsmith_mult_i32(global1.b, ~global1.b)), 20479i == global1.b, Struct_1(!global3.a, func_4(vec2<u32>(u_input.b.x << (6167u % 32u), func_3(Struct_2(global1.a, -407f), vec2<bool>(global3.b, global1.d.c.x), u_input.c, vec3<i32>(global1.b, global1.b, 60693i))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 60414u, 4294967295u, 42771u), vec4<u32>(u_input.b.x, 4294967295u, 19585u, u_input.b.x)), vec4<u32>(25813u, u_input.b.x, u_input.b.x, u_input.b.x))), select(global1.a, select(select(global0.a, global3.c, global3.c), global3.c, global1.a), global3.b)));
    let var_1 = 37816u;
    var var_2 = ~vec4<u32>(abs(_wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b)), 1u, u_input.b.x, var_1);
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(-897f, global0.b)), global0.b, _wgslsmith_f_op_f32(f32(-1f) * -727f), -1224f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b, -1059f, 1000f, 779f), vec4<f32>(global0.b, global0.b, global0.b, -858f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1287f, global0.b, global0.b, -187f) - vec4<f32>(global0.b, global0.b, global0.b, 472f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1805f, 762f, global0.b, -654f), vec4<f32>(global0.b, -823f, 1401f, 746f)), vec4<f32>(global0.b, global0.b, -821f, 988f), var_0.d.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-670f, -563f), 1f, _wgslsmith_f_op_f32(round(global0.b)), -579f))));
    let var_4 = Struct_1(!select(!vec2<bool>(global3.c.x, global3.b), select(vec2<bool>(global3.b, true), global3.a, global1.d.a), select(!vec2<bool>(global1.a.x, global3.c.x), select(global0.a.xx, vec2<bool>(global1.c, global0.a.x), false), false)), true, var_0.d.c);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b + -1471f), -481f);
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-982f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(arg_2.b - -1130f))))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(-723f, _wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(-2341f + 1112f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -2655f)))));
    var var_2 = global1.b;
    let var_3 = vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(firstLeadingBit(u_input.a.x), -2147483647i, _wgslsmith_add_i32(u_input.a.x, global1.b)), u_input.a), reverseBits(~global1.b), _wgslsmith_mult_i32(countOneBits(global1.b), -19982i) | arg_0.b);
    var var_4 = false;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * 718f) + global0.b));
    var var_1 = Struct_3(vec3<bool>(global1.c, true, any(!select(vec2<bool>(true, false), global0.a.xy, vec2<bool>(true, true)))), ~(firstTrailingBit(~(-18125i)) >> (max(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), func_1(Struct_3(vec3<bool>(global3.b, true, global0.a.x), u_input.c, global1.a.x, global1.d), 4294967295u, Struct_2(vec3<bool>(global1.d.a.x, true, false), -1564f), 15371u)) % 32u)), all(!(!vec4<bool>(global1.d.c.x, true, global0.a.x, true))), global1.d);
    var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 21u)];
    global3 = var_1.d;
    let var_2 = _wgslsmith_f_op_f32(round(2499f));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-2210f, _wgslsmith_f_op_f32(abs(626f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-376f, global0.b))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b, global0.b))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.b) * vec2<f32>(125f, var_2)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, 166f) * vec2<f32>(var_2, global0.b)))))));
    global1 = global2[_wgslsmith_index_u32(u_input.b.x, 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(firstLeadingBit(0u)) >> (1u % 32u)), _wgslsmith_add_vec4_u32(vec4<u32>(54468u, ~(~u_input.b.x), u_input.b.x, 1u), select(_wgslsmith_sub_vec4_u32(vec4<u32>(21944u, 3580u, 4294967295u, 1u), vec4<u32>(u_input.b.x, 94993u, u_input.b.x, 2982u)), vec4<u32>(6169u, 3100u, u_input.b.x, 1u) | vec4<u32>(0u, 1u, 0u, u_input.b.x), true) | vec4<u32>(29436u, u_input.b.x & 1u, u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 4294967295u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3) - var_3)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(var_3)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2, 244f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, var_3.x) - vec2<f32>(-528f, 2140f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 439f) + -687f))), vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1427f)))));
}

