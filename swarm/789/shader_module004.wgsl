struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<f32, 15>;

var<private> global2: array<Struct_2, 6>;

var<private> global3: array<Struct_1, 2>;

var<private> global4: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(1i, -5942i), vec2<i32>(-18524i, 56556i), vec2<i32>(-44193i, -1i), vec2<i32>(0i, -16605i), vec2<i32>(1i, -1i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), 52622i), vec2<i32>(0i, -34344i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0));
    var var_1 = -1i;
    var_1 = _wgslsmith_mod_i32(-24069i, firstTrailingBit(u_input.c.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(497f)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-var_0.a));
    return ~(~u_input.a) << (~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(1u, 106537u)))) % vec2<u32>(32u));
}

fn func_2() -> Struct_2 {
    global4 = array<vec2<i32>, 8>();
    let var_0 = !select(!(!(!vec2<bool>(global0.x, true))), vec2<bool>(global0.x, global0.x), false);
    global0 = select(vec2<bool>(var_0.x, u_input.d != 4294967295u), var_0, select(var_0, var_0, select(select(!vec2<bool>(global0.x, global0.x), var_0, select(var_0, vec2<bool>(var_0.x, var_0.x), var_0)), !var_0, true)));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.d, u_input.d, ~(~(u_input.a.x | 1u))), 55400u), 6u)];
    var var_2 = vec3<u32>(var_1.e.x, _wgslsmith_dot_vec2_u32(~func_3(-310f), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(42629u, 18820u)))), u_input.d) >> (countOneBits(vec3<u32>(1u, 33816u, 0u)) % vec3<u32>(32u));
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_2.x, _wgslsmith_sub_u32(~75279u, ~var_1.e.x) >> (26427u % 32u)) & ~10114u, 6u)];
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> bool {
    var var_0 = func_2();
    var var_1 = vec4<bool>(true, global0.x, true, false);
    global4 = array<vec2<i32>, 8>();
    var var_2 = global0.x;
    let var_3 = _wgslsmith_mod_vec3_u32(var_0.e.wyz, select(arg_1.e.yxw, _wgslsmith_add_vec3_u32(~vec3<u32>(24882u, 4294967295u, 1u), _wgslsmith_mod_vec3_u32(arg_1.e.zzw, vec3<u32>(70395u, 814u, u_input.d))) << (~vec3<u32>(var_0.e.x, var_0.e.x, 0u) % vec3<u32>(32u)), true));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(u_input.d << (u_input.a.x % 32u), 2u)];
    global0 = select(vec2<bool>(!func_1(global0.x && global0.x, Struct_2(vec3<bool>(true, global0.x, true), Struct_1(global1[_wgslsmith_index_u32(u_input.d, 15u)]), 542f, global3[_wgslsmith_index_u32(15916u, 2u)], vec4<u32>(u_input.d, u_input.a.x, u_input.d, u_input.d))), false), !vec2<bool>(!all(vec2<bool>(true, false)), global0.x), !(!any(vec2<bool>(true, true))));
    global0 = !(!select(!vec2<bool>(global0.x, global0.x), select(!vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(false, global0.x), vec2<bool>(global0.x, false))), vec2<bool>(global0.x, true)));
    var var_1 = global0.x;
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(~21159u, 27107u), _wgslsmith_add_vec2_u32(~u_input.a, vec2<u32>(_wgslsmith_clamp_u32(u_input.d, 93171u, u_input.a.x), 16436u))) | (vec2<u32>(~19499u, _wgslsmith_add_u32(20006u, 4294967295u ^ u_input.a.x)) >> (vec2<u32>(u_input.d, ~1u) % vec2<u32>(32u)));
    var_0 = Struct_1(var_0.a);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a + global1[_wgslsmith_index_u32(func_3(var_0.a).x, 15u)]))));
    var_0 = global3[_wgslsmith_index_u32(var_2.x, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-541f, _wgslsmith_f_op_f32(-1491f + _wgslsmith_f_op_f32(var_0.a + var_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1427f + global1[_wgslsmith_index_u32(u_input.a.x ^ 44636u, 15u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(986f, -438f))) - vec2<f32>(_wgslsmith_f_op_f32(select(-538f, 372f, global0.x)), _wgslsmith_f_op_f32(floor(-1099f)))), vec2<i32>(u_input.e.x, ~select(max(u_input.c.x, u_input.c.x), ~u_input.c.x, true)), global1[_wgslsmith_index_u32(4568u, 15u)], _wgslsmith_sub_i32(0i >> (var_2.x % 32u), 1i));
}

